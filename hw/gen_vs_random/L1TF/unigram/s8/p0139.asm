.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle bl
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
inc esi
add bl, -37 # instrumentation
dec cl
xor dl, bl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 86
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sbb sil, 19
add dl, 12 # instrumentation
cmovnb edi, edx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 11
btc edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
