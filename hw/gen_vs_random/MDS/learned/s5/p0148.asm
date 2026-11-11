.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
or al, 30
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or dl, 51
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test al, -81
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor rsi, -117
and cl, 79
xor ax, -1005
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or cl, bl
or rax, 52
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
