.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -1721938664
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
add al, -14 # instrumentation
lea ax, qword ptr [rdi + rsi]
mul dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs eax, ebx
lea si, qword ptr [rdx + rcx + 88]
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 37
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and sil, 111
setb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
