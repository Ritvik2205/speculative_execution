.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
sub rbx, -11
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
adc ax, -614
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
movzx eax, al
sub al, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
lea rbx, qword ptr [rbx]
dec rbx
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
cmovp si, si
jmp .bb_0.2
.bb_0.2:
add cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
not rcx
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr cx, di
add al, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
cmp cx, 88
add ax, 6656
cmovs ax, si
or cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
