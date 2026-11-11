.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdi, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
lea ax, qword ptr [rcx + rax + 58]
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
lea edx, qword ptr [rax + rdx + 24]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
imul rdx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 38
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
cmp rcx, rbx
and rax, -273199823
xor rdx, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
