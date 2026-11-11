.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add al, -46
or si, 73
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
lea rcx, qword ptr [rdx + rsi]
jmp .bb_0.3
.bb_0.3:
not cx
jmp .bb_0.4
.bb_0.4:
and dl, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
test sil, 29
test bl, 84
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
