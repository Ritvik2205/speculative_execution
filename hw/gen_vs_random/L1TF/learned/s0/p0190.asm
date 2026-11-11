.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle esi, ecx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
cmp di, 45
lea cx, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
inc eax
cmovbe ecx, eax
xor bl, cl
cmp al, -119
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
