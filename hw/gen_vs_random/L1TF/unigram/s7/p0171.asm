.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sbb di, 80
and al, -68
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
btr edi, 31
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
lea si, qword ptr [rcx]
and cl, al
cwd
mov bl, bl
sub dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
