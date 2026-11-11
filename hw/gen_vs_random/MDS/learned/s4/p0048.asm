.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
or dl, cl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
btr bx, cx
btr ax, 193
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test sil, dl
xor bl, dil
or cl, al
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
or ax, 85
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and dl, -73
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
