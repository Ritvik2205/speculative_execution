.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
btc rbx, 118
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
test al, 22
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 73
jmp .bb_0.3
.bb_0.3:
xor bl, dil
test bl, 65
xor dl, 34
not dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
