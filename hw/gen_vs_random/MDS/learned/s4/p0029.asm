.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -96
or dil, -78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and ebx, 45
or dl, -89
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
xor bl, dil
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
xor ax, -5889
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
