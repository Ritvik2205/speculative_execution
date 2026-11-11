.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, bx
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and al, -111
btr di, cx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
setnbe bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
add al, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
adc al, cl
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
xor cl, cl
cmovnle edi, eax
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
