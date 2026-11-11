.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 46
and bl, dil
xor sil, 110
and al, 87
or al, dil
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
test bl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
btr ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, 66
test al, bl
and dl, -73
or al, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
