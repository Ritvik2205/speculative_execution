.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
cmovnbe bx, di
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 63
xor eax, 1170472196
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
or rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 99
or dil, -52
btc ecx, 99
cmovb bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
btc rsi, rdi
or sil, dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
cmovz rdx, rbx
cmovnle rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or al, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
