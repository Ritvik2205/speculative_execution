.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 15
and rbx, 65
and sil, bl
test al, 22
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor al, 55
and bl, bl
xor dl, 34
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
or sil, bl
or al, 37
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or rax, 52
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
