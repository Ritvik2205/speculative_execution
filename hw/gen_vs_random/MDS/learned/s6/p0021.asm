.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
btr cx, si
or rax, 302048971
xor al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor sil, 110
and dl, cl
and cl, -111
and al, dl
xor al, -4
test dl, sil
or al, 54
xor sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
