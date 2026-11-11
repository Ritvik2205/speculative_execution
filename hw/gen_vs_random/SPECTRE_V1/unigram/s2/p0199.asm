.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, al
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
xchg sil, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 16
add sil, bl
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rdx + rdi]
sbb dx, 17
dec dl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 48
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
