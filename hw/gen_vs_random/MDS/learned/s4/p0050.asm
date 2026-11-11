.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or al, 16
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test ax, -31596
or dil, -41
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
xor sil, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
test dil, 46
or dl, al
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
