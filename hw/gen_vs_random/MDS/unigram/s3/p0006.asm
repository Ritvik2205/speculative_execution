.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 34
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
xor dil, 8
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
btr bx, 74
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xor ax, -5889
not al
test ecx, -1843375753
cmovno rsi, rbx
and dl, 37 # instrumentation
cmovnbe si, di
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
test bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
cmovp ebx, edi
cmovle cx, si
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
