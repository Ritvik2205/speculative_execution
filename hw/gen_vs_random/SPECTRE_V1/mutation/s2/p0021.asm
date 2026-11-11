.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 28 # instrumentation
setnz al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
dec dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor cx, di
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
add cl, 22 # instrumentation
cmovns rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
lea ax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
