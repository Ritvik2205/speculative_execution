.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 100
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or dl, -8
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
test rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and bl, 108 # instrumentation
cmovns rbx, rbx
test rax, -1579405415
test rcx, -613256812
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
or dl, sil
btr si, si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
or ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
