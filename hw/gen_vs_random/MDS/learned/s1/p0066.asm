.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
jmp .bb_0.2
.bb_0.2:
and dl, dil
or al, cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and dil, bl
test bl, -14
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
xor dil, cl
or cx, -42
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and al, sil
xor edi, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
