.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 69
or si, dx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 75
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
movsx esi, dl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 76
sbb esi, 74
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
sbb rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
