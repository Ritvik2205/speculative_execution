.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
test dil, bl
bt si, di
btr esi, edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
not al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or al, 74
test al, dl
btc esi, 199
xor rax, 459999114
and dil, -62
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
