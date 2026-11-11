.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle di, di
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 24
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 96
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
mov cl, dil
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
inc bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
test di, di
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
or ax, ax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
