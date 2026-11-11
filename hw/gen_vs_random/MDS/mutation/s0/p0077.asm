.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and bl, 33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or dil, -78
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test edx, ebx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, -731384280
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
