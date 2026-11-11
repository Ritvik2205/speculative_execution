.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rbx
adc rsi, 25
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
setno bl
lea ebx, qword ptr [rax + rcx]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 21
add dl, 109 # instrumentation
sbb dl, 20
sub dl, al
xor bl, al
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
imul cl
cmovs esi, edx
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
