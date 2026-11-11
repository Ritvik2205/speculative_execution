.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovnle esi, ebx
inc eax
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdx
not cx
cmp cx, bx
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
add dl, -7 # instrumentation
cwd
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
movzx ecx, cx
cmovns dx, ax
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
