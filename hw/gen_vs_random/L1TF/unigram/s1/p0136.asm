.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 59
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
setnle cl
sub dl, -49
add bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
movzx cx, al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
