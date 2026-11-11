.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
and bl, bl
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
xor bl, cl
and dl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test bl, cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
