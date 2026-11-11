.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 71
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor al, dl
xor al, -19
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test ax, -20900
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
test al, -7
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test edx, -1561252782
xor dl, dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
add sil, dl
test al, dl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
