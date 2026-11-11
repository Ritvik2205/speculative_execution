.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
or dil, -78
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
bts di, 37
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and cl, 122 # instrumentation
cmovl eax, eax
and al, 20 # instrumentation
cmovp di, cx
xor dl, bl
bt rdx, rdi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
and al, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
and al, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
