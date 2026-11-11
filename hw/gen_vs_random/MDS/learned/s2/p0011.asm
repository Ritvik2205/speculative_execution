.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or dl, dil
or ax, -20176
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor al, 99
test bl, -9
bts ecx, 3
and cl, cl
jmp .bb_0.1
.bb_0.1:
xor cl, dl
and dl, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
