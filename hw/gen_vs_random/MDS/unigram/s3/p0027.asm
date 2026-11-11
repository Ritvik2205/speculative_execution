.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, rcx
or cl, 119
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
or dl, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 25
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
or cl, 7
and bl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
cmovbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
