.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
inc dl
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
lea esi, qword ptr [rdi + rbx + 14]
and dl, sil
mov ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or rdi, 2
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 74
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rbx
lea di, qword ptr [rcx]
add al, -15 # instrumentation
cmovl rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
