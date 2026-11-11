.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or rax, 302048971
test al, dl
xor bl, dl
and sil, -9
or al, -22
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor rdi, -9
not bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
or rdx, -48
xor al, -89
xor dl, 40
and al, 84
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
