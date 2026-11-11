.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
test rcx, 51
or dil, bl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 30
xor rsi, 73
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
mul rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
lea di, qword ptr [rsi + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 72
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
cmovno edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
lea ax, qword ptr [rsi + rcx + 63]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
