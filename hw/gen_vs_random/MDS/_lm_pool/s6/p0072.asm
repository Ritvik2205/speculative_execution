.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and dl, al
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and al, -8
or al, cl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
not al
test bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test rsi, 9
xor sil, -14
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
