.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor sil, 94
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
test eax, 1838539683
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and al, 14
not dl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor dl, -59
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor bx, 71
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
