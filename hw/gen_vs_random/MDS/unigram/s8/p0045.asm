.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, rax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
test dil, -80
or dl, al
or dil, 16
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and al, 67 # instrumentation
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
bt edi, 225
bts rcx, 98
cmovns si, bx
xor dl, -59
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 99
test dil, -51
and dl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
