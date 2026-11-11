.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or bl, -54
and dl, dl
or eax, -696456144
or dil, bl
cmovno di, cx
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or rdi, -11
or ax, -11837
test al, 22
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor sil, -15
xor ax, -6793
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
