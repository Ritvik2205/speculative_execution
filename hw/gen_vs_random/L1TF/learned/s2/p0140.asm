.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, bx
xor al, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
btc ax, cx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and dl, 59
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
