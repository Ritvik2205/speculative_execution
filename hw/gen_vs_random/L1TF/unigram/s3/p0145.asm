.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, dl
add cl, -6 # instrumentation
cmovnb eax, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
xor si, -50
add dl, dl
movzx rax, cl
btc si, cx
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
add bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmovnp esi, eax
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
