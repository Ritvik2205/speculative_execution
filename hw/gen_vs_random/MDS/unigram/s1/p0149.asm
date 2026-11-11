.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
or sil, cl
or dl, -115
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 21
or rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
bts eax, edx
xor sil, bl
cmovs rdi, rdx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 93
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and cx, dx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovnb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
