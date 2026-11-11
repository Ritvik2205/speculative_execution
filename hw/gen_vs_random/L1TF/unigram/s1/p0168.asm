.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
setp cl
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
lea rcx, qword ptr [rsi + rbx + 26]
cmovns rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xchg rdx, rcx
cmovno rcx, rsi
add dil, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
setno al
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
cmovnz rax, rcx
cmovb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
