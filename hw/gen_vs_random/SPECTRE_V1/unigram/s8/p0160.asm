.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
add dl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
mov cx, -13260
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
imul edx, ecx
lea ax, qword ptr [rax + rdi]
cmovnb bx, bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
test sil, 97
bts cx, cx
adc al, -82
lea di, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
