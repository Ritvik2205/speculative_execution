.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
cmp dl, dl
add sil, -93 # instrumentation
cmovb rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
not edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
or ebx, eax
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
cmovnp rsi, rcx
add dl, 70 # instrumentation
sbb bl, 28
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
