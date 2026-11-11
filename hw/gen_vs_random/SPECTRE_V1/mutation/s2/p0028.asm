.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
movzx eax, si
sub dx, -23
or cl, al
bts di, 230
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb eax, 1332762061
lea dx, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
mov bl, al
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
movzx di, sil
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
