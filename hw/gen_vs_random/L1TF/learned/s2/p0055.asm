.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc rax, -1877286258
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
bt di, di
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, edx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
lea di, qword ptr [rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
