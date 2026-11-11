.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 46
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
or dl, -31
or al, -22
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test eax, -571234566
or dil, -71
or al, 25
or al, dl
and al, dl
or al, cl
and dil, dil
test dl, -85
xor dl, 8
bt di, ax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
