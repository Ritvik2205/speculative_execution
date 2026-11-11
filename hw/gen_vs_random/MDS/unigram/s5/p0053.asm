.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 48 # instrumentation
cmovz rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
xor rax, rcx
bt edi, ecx
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, dl
or si, si
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
btc ecx, 8
and bl, bl
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
