.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rcx, rax
btr edx, 197
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
test eax, -571234566
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
or dil, dl
test si, 76
and dil, 8 # instrumentation
cmovz rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
cmovns bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
btc dx, 67
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovp eax, ebx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and dx, bx
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
