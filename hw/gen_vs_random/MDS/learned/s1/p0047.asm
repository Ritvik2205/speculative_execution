.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
xor dl, sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
test al, 22
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
or al, bl
xor al, -19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, -61
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
test cl, bl
and al, bl
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
