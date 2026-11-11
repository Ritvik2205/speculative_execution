.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor sil, al
xor sil, 94
jmp .bb_0.1
.bb_0.1:
test dil, dl
or al, 30
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
or al, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btr eax, ecx
or di, 60
xor sil, -14
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or al, -61
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
