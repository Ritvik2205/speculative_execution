.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -33
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add al, -84 # instrumentation
lea eax, qword ptr [rdx + rdx + 60]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add bl, 21 # instrumentation
adc bx, 13
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rax + rdx]
mul rcx
cmp rdx, -19
setnl al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
bswap ebx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
