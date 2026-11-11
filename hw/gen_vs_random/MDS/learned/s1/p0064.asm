.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 96
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
xor sil, 94
or al, dl
bts rcx, 90
jmp .bb_0.1
.bb_0.1:
or sil, sil
test al, bl
btr ax, si
jmp .bb_0.2
.bb_0.2:
bt eax, 151
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or sil, cl
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor si, 91
bt cx, dx
or dl, -21
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
