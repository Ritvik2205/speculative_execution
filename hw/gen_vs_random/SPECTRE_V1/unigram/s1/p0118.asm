.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ax, dl
lea ecx, qword ptr [rdi + rdi + 61]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 9
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rdx, rsi
cmovb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
