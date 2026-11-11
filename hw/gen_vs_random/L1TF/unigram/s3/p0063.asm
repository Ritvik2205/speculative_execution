.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmovnb rcx, rbx
neg eax
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
add di, dx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
lea dx, qword ptr [rax + rsi + 12]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe dl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
xor bl, sil
lea edx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
