.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test dil, al
not al
or eax, edx
or al, dil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and sil, sil
test dil, -51
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
xor rax, -91
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
