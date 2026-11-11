.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
xor dl, -59
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and al, sil
jmp .bb_0.2
.bb_0.2:
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
