.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
add rcx, 23
and rax, -175411684
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
and bl, 124
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
or dx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
lea dx, qword ptr [rbx + rdx + 56387]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
movsx cx, dl
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
