.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, edx
or dl, 5
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
or rbx, 49
bt rax, rcx
lea edx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 96
or ebx, 72
cmp eax, 912798305
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xor dl, -91
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
lea rbx, qword ptr [rax + rdi]
cmovns edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
